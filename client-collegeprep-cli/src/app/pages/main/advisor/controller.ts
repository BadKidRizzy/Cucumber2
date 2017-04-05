import { Component } from '@angular/core';
import { Response } from '@angular/http';
import { AuthService } from "client-angular2-components/dist/services/auth";
import { UserService } from "client-angular2-components/dist/services/user";
import { User, FeaturesEnum } from "client-angular2-components/dist/models";

import { PAYMENT_SKUS, PAYMENT_APP } from "../../../helpers/paymentSkus";
import { AdvisorService } from "./service";
import { environment } from "../../../../generated.env";

declare var moment: any;
declare let StripeCheckout : any;
//import { FileUploader } from '../../../../../node_modules/ng2-file-upload/ng2-file-upload';

@Component({
  selector: 'advisor-page',
  templateUrl: './view.html',
  styleUrls: ['./view.scss'],
  //directives:[FileUploader]
})

export class AdvisorPage
{
  // constants
  public static TAG                      : string = "AdvisorPage";
  private static ZENDESK_ESSAY            : string = '31897568';        // sync with ZenDesk
  private static CHARGED_ITEMS            : Array<string> = [AdvisorPage.ZENDESK_ESSAY];
  private static ALLOW_ATTACHMENTS_ITEMS  : Array<string> = [AdvisorPage.ZENDESK_ESSAY];

  // interface to html
  public currentNote        : any = {};
  public notes              : Array<any> = [];
  public topics             : Array<any> = [];
  public viewNote           : boolean = false;
  public allowAttachment    : boolean = false;
  public chargeable         : boolean = false;
  public question           : any = {};
  public serviceDescription : string = '';
  public replyMessage       : string = '';
  public paymentAmount      : string = '';
  public invalidTitle       : boolean = false;
  public invalidQuestion    : boolean = false;
  public viewSpinner        : boolean = false;
  public invalidTopic       : boolean = false;
  public showSidebar: boolean;
  public isSending: boolean;
  public accessLevel: number;
  public featureDescription: string = "Searching for colleges, writing essays, finding scholarships and you have no idea where to start? Ask an expert with Advisor";

  //public uploader           : FileUploader = new FileUploader({});
  //public hasBaseDropZoneOver: boolean = false;

  // internal/private attributes
  private payment           : any;
  private user              : User = {};

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  constructor( private advisorService: AdvisorService,
               private userService: UserService,
               private auth_service : AuthService) {
    Object.assign(this, FeaturesEnum);
  }

  public ngOnInit() : void
  {
    this.accessLevel = this.userService.features.advisor_q_a;

    if ( this.accessLevel == FeaturesEnum.FULL_ACCESS ){

      //this.payment = StripeCheckout.configure({
      //  key: environment.stripeKey,
      //  zipCode: true,
      //  image: PAYMENT_SKUS['essay'].image,
      //  locale: 'auto',
      //  token: (token:any) => this.cardProcessed( token )
      //});

      //
      // defaults
      //
      this.question.title = '';
      this.question.body = '';
      this.question.topic = -1;

      this.initUserData();

      // get groups for menu
      this.getGroups();

      // get user's list of questions by their email
      this.getTickets();

    } else {
      //dummy mock data for display
      this.currentNote = { title: 'Ideas for majors' };
      this.notes = [
        { title: 'Which majors should I choose?' },
        this.currentNote,
        { title: 'Can I apply to this scholarship?' },
        { title: 'What classes shold I choose for my final year in high school?' },
      ];
    }
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private getTopicName( id: string ) : string
  {
    let i : number;
    for( i=0; i < this.topics.length; i++ )
    {
      if( this.topics[i].id == id )return this.topics[i].name;
    }
    return 'Unknown';
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private askCreditCard() : void
  {
    console.warn(AdvisorPage.TAG, 'paid essay review disabled');
    //this.payment.open({ name        : PAYMENT_APP,
    //                    description : PAYMENT_SKUS['essay'].name,
    //                    amount      : PAYMENT_SKUS['essay'].amount
    //                  });
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private cardProcessed( token : any ) : void
  {
    this.saveQuestion();

    /*
      card:Object
        address_city:null
        address_country:null
        address_line1:null
        address_line1_check:null
        address_line2:null
        address_state:null
        address_zip:null
        address_zip_check:null
        brand:"Visa"
        country:"US"
        cvc_check:"pass"
        dynamic_last4:null
        exp_month:1
        exp_year:2022
        funding:"credit"
    id:"card_18yNb2GZ0LMKTbTCn2CkPhhp"
    last4:"4242"
    metadata:Object
    name:"john@tegen.net"
    object:"card"
    client_ip:"50.76.13.81"
    created:1474990456
    email:"john@tegen.net"
    id:"tok_18yNb2GZ0LMKTbTCDbhZHf81"
    livemode:false
    object:"token"
    type:"card"
    used:false
    */
    // save state of transaction to server
    let data : any = {};
    data.userId           = this.auth_service.getToken().osdcUserId;
    data.token            = token.id;
    data.transactionDate  = moment( new Date( token.created * 1000 ) ).format( 'YYYY-MM-DD HH:mm:ss.SSSS' );
    data.email            = token.email;
    data.cardBrand        = token.card.brand;
    data.cardLast4Digits  = token.card.last4;
    data.cardCountryName  = token.card.country;
    data.amount           = PAYMENT_SKUS['essay'].amount;
    data.transactionItems = [ PAYMENT_SKUS['essay'].name ];

    //console.debug('save transaction', JSON.stringify( data ) );

    // todo: more here

    this.advisorService.postPaymentTransaction(data).then(
      ( response: any ) => this.savedPayment(response),
      ( fail ) => this.failedSavedPayment(fail)
    );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private savedPayment( response : any ) : void
  {
    console.debug( 'savedPayment', response );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private failedSavedPayment( response : any ) : void
  {
    console.error( 'failedSavedPayment', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private clearNote() : void
  {
    this.question.title  = '';
    this.question.body   = '';
    this.invalidTitle    = false;
    this.invalidQuestion = false;
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  public addNote() : void
  {
    //console.debug(AdvisorPage.TAG, "addNote");
    this.showSidebar = true;
    this.viewNote = false;
    this.invalidQuestion = false;

    this.question.title = '';
    this.question.body = '';
    this.question.topic = -1;
    this.updateTopicState( this.question.topic, false );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  public changeNote( note : any ) : void
  {
    //console.debug(AdvisorPage.TAG, "changeNote", note );
    this.currentNote     = note;
    this.viewNote        = true;
    this.invalidQuestion = false;
    this.allowAttachment = ( AdvisorPage.ALLOW_ATTACHMENTS_ITEMS.indexOf( note.groupId ) >= 0 );
    this.replyMessage = null;

    this.currentNote.comments = []; // reset
    //
    // get details of the ticket and all of its comments
    //
    this.viewSpinner = true;

    this.advisorService.fetchTicket(this.currentNote.id).then(
      (successResp:any) => this.gotMessageDetails(successResp),
      (failResp:any) => this.failedMessageDetails( failResp )
    );

  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private gotMessageDetails( response : any ) : void
  {
    //console.debug( 'gotMessageDetails',response );
    this.viewSpinner = false;
    this.addComments( this.currentNote, response.comments );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private failedMessageDetails( response : any ) : void
  {
    this.viewSpinner = false;
    console.error( 'failedMessageDetails',response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  public sendReplyMessage() : void
  {
    if( !this.replyMessage )
    {
      this.invalidQuestion = true;
      document.getElementById('reply-body').focus();
      return;
    }

    //console.log('sendReplyMessage', this.currentNote, this.replyMessage );
    this.showSidebar = false;

    let data : any = {};
    data.body      = this.replyMessage;
    data.userEmail = this.user.email;

    //console.debug('sendReplyMessage', data );

    //
    // request from server
    //
    this.viewSpinner = true;
    this.isSending = true;
    this.advisorService.postReply(this.currentNote.id, data).then(
      (successResp:any) => this.replyMessageSaved(successResp),
      (failResp:any) => this.replyMessageFailed( failResp )
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // saved new question/message to server and this is the response from it
  private replyMessageSaved( response : any ) : void
  {
    //console.debug('replyMessageSaved', response );

    this.viewSpinner = false;
    this.isSending = false;
    this.showSidebar = false;

    //if( response.authorId )console.warn('/reply now has authorId');

    let new_comment : any = {};
    new_comment.created     = new Date().toUTCString();
    new_comment.body        = response.body;
    new_comment.authorId    = response.authorId;
    new_comment.attachments = [];

    this.addComments( this.currentNote, [new_comment] );

    // http://valor-software.com/ng2-file-upload/

    // upload any file attached
    let file_selected : any = document.getElementById('reply-question-file');
    if( this.allowAttachment && file_selected.files && file_selected.files.length > 0 )
    {
        this.attachFile( response.id, file_selected.files );
    }

    this.replyMessage = null;
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private replyMessageFailed( response : any ) : void
  {
    this.viewSpinner = false;
    this.isSending = false;
    console.error('replyMessageFailed', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  public sendNewMessage() : void
  {
    //console.debug(AdvisorPage.TAG, "sendNewMessage", this.question );

    // validate
    if( this.question.title == '' )
    {
      console.error( 'Please enter title' );
      // force focus to subject
      document.getElementById('question').focus();
      this.invalidTitle = true;
      return;
    }
    if( this.question.topic == '' || this.question.topic < 0 )
    {
      console.error( 'Please select a topic' );
      this.invalidTopic = true;
      return;
    }
    if( this.question.body == '' )
    {
      console.error( 'Please enter a question' );
      this.invalidQuestion = true;
      // force focus to text area
      document.getElementById('new-question-body').focus();
      return;
    }

    // if topic that requires a file, prompt them
    // todo:

    if( this.chargeable )
    {
      this.askCreditCard();
    }
    else
    {
      this.saveQuestion();
    }

  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private saveQuestion() : void
  {
    //console.log('saveQuestion', this.auth_service.getToken() );

    let data : any = {};
    data.subject   = this.question.title;
    data.body      = this.question.body;
    data.userId    = this.auth_service.getToken().osdcUserId;
    data.userEmail = this.user.email;
    data.userName  = this.user.first_name + ' ' + this.user.last_name;
    data.groupId   = this.question.topic;

    //console.debug('send', JSON.stringify( data ) );

    //
    // request from server
    //
    this.viewSpinner = true;
    this.isSending = true;
    this.advisorService.submitQuestion(data).then(
      (successResp:any) => this.newMessageSaved(successResp),
      (failResp:any) => this.saveQuestionFailed( failResp )
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // saved new question/message to server and this is the response from it
  private newMessageSaved( response : any ) : void
  {
    //console.log( 'newMessageSaved', response );

    this.viewSpinner = false;
    this.isSending = false;
    this.showSidebar = false;

    // add to notes
    this.addNewNote( {  id        : response.id,
                        subject   : response.subject,
                        status    : response.status,
                        modified  : response.created,
                        authorId  : response.authorId ? response.authorId : '',   // todo
                        groupId   : response.groupId,
                        comments:[{
                                    modified    : response.created,
                                    body        : response.body,
                                    authorId    : response.authorId ? response.authorId : '',   // todo
                                    attachments :[]
                                  }]
                      } );

    // if there is a file to associate, now add that
    // todo: add any files
    // http://blog.teamtreehouse.com/uploading-files-ajax
    let file_selected : any = document.getElementById('new-question-file');
    if( this.allowAttachment && file_selected.files && file_selected.files.length > 0)
    {
      //console.debug('files', file );
      this.attachFile( response.id, file_selected.files );
    }

    // sort for most recent first and then display that note to allow user to reply right away
    this.notes.sort( ( n1:any, n2:any ) => AdvisorPage.notesCompare(n1,n2) );
    this.changeNote( this.notes[ 0 ] );
    this.clearNote();

    this.viewNote = true;
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private saveQuestionFailed( response : any ) : void
  {
    this.viewSpinner = false;
    this.isSending = false;
    console.error('saveQuestionFailed', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private attachFile( id : string, files : Array<File> ) : void
  {
    let data : FormData = new FormData();
    data.append('file', files[0]);

    this.advisorService.uploadFile(id, this.user.email, data).then(
      (successResp:any) => this.fileUploadSuccess(successResp),
      (failResp:any) => this.fileUploadFailed(failResp)
    );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private fileUploadSuccess( response : any ) : void
  {
    //console.info('fileUploadSuccess', response );
    this.changeNote( this.currentNote );
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private fileUploadFailed( response : any ) : void
  {
    console.error('fileUploadFailed', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // convert message from server to a note that can be viewed
  private addNewNote( data : any ) : void
  {
    let note : any = {};

    let tm : Date = new Date( data.modified );

    note.id             = data.id;
    note.title          = data.subject;
    note.status         = data.status;
    note.authorId       = data.authorId;
    note.modified       = tm.getTime()/1000;
    note.modifiedText   = AdvisorPage.timeFormatted( tm );
    note.groupId        = data.groupId.toString();
    note.topicName      = this.getTopicName( note.groupId );
    note.nbrAttachments = 0;
    note.comments       = [];

    switch( data.status )
    {
      case 'new'      : note.priority = 0; break;
      case 'open'     : note.priority = 2; break;
      case 'pending'  : note.priority = 4; break;
      case 'closed'   : note.priority = 6; break;
      default         : note.priority = 8; console.error('unknown status', data.status ); break;
    }

    this.notes.push( note );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // convert message from server to a note that can be viewed
  private addComments( note : any, comments : Array<any> ) : void
  {
    if( comments == null )return;

    let i           : number;
    let j           : number;
    let comment     : any = {};
    let attachment  : any;
    let tm          : Date;

    // reset
    note.nbrAttachments = 0;

    for( i=0; i < comments.length; i++ )
    {
      comment = {};

      tm = new Date( comments[i].modified || comments[i].created );

      comment.authorType    = ( note.authorId == comments[i].authorId ) ? 'user' : 'advisor';
      comment.author        = ( note.authorId == comments[i].authorId ) ? 'You' : 'Advisor';
      comment.modified      = tm.getTime()/1000;
      comment.modifiedText  = AdvisorPage.timeFormatted( tm );
      comment.body          = comments[i].body;

      // add in attachments for each comment
      comment.attachments = [];
      if( comments[i].attachments )
      {
        for( j=0; j < comments[i].attachments.length; j++ )
        {
          //console.log('attach', comments[i].attachments[j] );
          attachment = {};
          attachment.name   = comments[i].attachments[j].file_name;
          attachment.url    = comments[i].attachments[j].content_url;
          attachment.size   = AdvisorPage.getFileSize( comments[i].attachments[j].size );
          //attachment.thumb = comments[i].attachments[j].thumbnails[0].content_url;
          comment.attachments.push( attachment );
        }


        note.nbrAttachments += comments[i].attachments.length;
      } // endif

      note.comments.push( comment );

    } // endfor
  }


  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //
  public topicChanged( event : any ) : void
  {
    //console.debug(AdvisorPage.TAG, "topicChanged", event.srcElement.value, this.question.topic );
    this.updateTopicState( event.srcElement.value, true );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //
  public updateTopicState( id : string, check : boolean ) : void
  {
    //console.log('updateTopicState', id );
    this.chargeable       = ( AdvisorPage.CHARGED_ITEMS.indexOf( id ) >= 0 );
    this.allowAttachment  = ( AdvisorPage.ALLOW_ATTACHMENTS_ITEMS.indexOf( id ) >= 0 );

    if( this.chargeable )
    {
      // todo: based on type
      this.serviceDescription = 'Our advisors will review your essay.  In addition to minor editing and proofreading, advisors will provide feedback on the content and tone of your essay.  Each session will allow up to 3 revisions.';
      this.paymentAmount = Number( PAYMENT_SKUS['essay'].amount/100 ).toFixed( 2 );
    }

    if( check )this.invalidTopic = ( id == '' || id == '-1' );
    //console.log('updateTopicState', id, this.invalidTopic );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // http://stackoverflow.com/questions/32423348/angular2-post-uploaded-file
  /*
  public selectAttachment() : void
  {
    console.debug(AdvisorPage.TAG, "selectAttachment");
  }
  */

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private getGroups() : void
  {
    this.advisorService.queryGroups().then(
      (successResp:any)=>this.gotGroups(successResp),
      (failResp:any) => this.failedGroups( failResp )
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private getTickets() : void
  {
    this.viewSpinner = true;
    this.advisorService.fetchUserTickets(this.auth_service.getToken().userName).then(
      (successResp:any)=>this.gotMessages(successResp),
      (failResp:any) => this.failedMessages(failResp)
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private initUserData() : void
  {
    this.userService.fetchUser().then((user: User) => this.user = user);
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private gotGroups( response: any ) : void
  {
    //console.log('gotGroups', response );
    this.topics = response;

    //this.question.topic = this.topics[0].id;
    this.updateTopicState( this.question.topic, false );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private failedGroups( response : any ) : void
  {
    console.error('failedGroups', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private gotMessages( response: any ) : void
  {
    //console.log('gotMessages', response );
    this.viewSpinner = false;

    let tickets : Array<any> = response.tickets;
    let i : number;

    for( i=0; i < tickets.length; i++ )
    {
      this.addNewNote( tickets[i] );
    }
    this.notes.sort( ( n1:any, n2:any ) => AdvisorPage.notesCompare(n1,n2) );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private failedMessages( response : any ) : void
  {
    this.viewSpinner = false;
    console.error('failedMessages', response );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  private static notesCompare( n1:any, n2:any) : number
  {

    if( n1.modified > n2.modified )
    {
      return -1;
    }
    else if( n1.modified < n2.modified )
    {
      return 1;
    }
    else
    {
      return 0;
    }

  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // returns the string version conversion of the size of a file
  private static getFileSize( size: number ) : string
  {
    let filesize   : number = size;
    let iterations : number = 0;
    let units      : Array<string> = ['bytes', 'kb', 'mb', 'gb', 'tb' ];

    while( filesize > 1024 )
    {
      filesize = filesize / 1024;
      iterations++;
    }
    return filesize.toFixed(1) + ' ' + units[iterations];
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // std date/time formatting
  private static timeFormatted( dt : Date ) : string
  {
    return moment( dt ).format('MM/DD/YY | h:mm a');
  }

}

//
// eof
//
