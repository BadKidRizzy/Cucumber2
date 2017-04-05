//import * as moment from 'moment';
declare var moment: any; //chunk splitting bug workaround

export class DateFormatter {
  public format(date:Date, format:string):string {
    return moment(date.getTime()).format(format);
  }
}
