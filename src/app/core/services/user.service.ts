import { Injectable } from '@angular/core';
import { HttpClient, HttpParams, HttpHeaders } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { map } from 'rxjs/operators';

export class UserContext {
  roles: Array<any>;
  email: string;
  username: string;

  userValidate() {
    return this.roles && this.roles.length && this.username && this.email;
  }
}

export class UserPasswordResetContext {
  password: string;
  token: string;
}


@Injectable({
  providedIn: 'root'
})
export class UserService {
  public detailId;

  constructor(private httpService: HttpClient) {
   }

  //get request
  getUsers() {  
    return this.httpService.get('/api/users');
  }

  sendUserId(userId) {
    this.detailId = userId;
  }
  getUser(){
    return this.httpService.get('/api/users/' + this.detailId);
  }
 
  //post request
  
  createUser(userContext: UserContext){
    return this.httpService.post('/api/users', userContext);
  }

  resetPassword(context:UserPasswordResetContext){
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Basic d2ViYXBwLXJ3OndlYmFwcC1ydy0xMjM0')
                .set('Content-Type', 'application/json');
    return this.httpService.post('/api/users/password/reset', context, {headers: headers});
  }

}
