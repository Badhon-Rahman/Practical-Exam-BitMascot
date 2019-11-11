import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './component/login.component';
import { PasswordResetComponent } from './password-reset/password-reset.component';


const routes: Routes = [
  { path: 'login', component: LoginComponent, data: { title:('Login') }},
  { path: 'password/reset', component: PasswordResetComponent },

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
  providers: []
})
export class LoginRoutingModule { }
