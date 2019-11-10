import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { Shell } from '@app/shell/shell.service';
import { extract } from '@app/core';
import { LoginComponent } from '@app/login/component/login.component';


const routes: Routes = [
  { path: 'login', component: LoginComponent, data: { title: extract('Login') }},
  
  Shell.childRoutes([
    { },
  ])
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
  providers: []
})
export class LoginRoutingModule { }
