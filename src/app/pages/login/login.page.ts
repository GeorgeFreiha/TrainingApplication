import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { TrainingprogramsService, User} from './../../services/trainingprograms.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {

  constructor(  private service: TrainingprogramsService, ) { }

  ngOnInit() {
  
    
  }
  onLoginn(form: NgForm){
    const user = form.value;
    this.service.addUser(user).subscribe(responsee=>{
      console.log(responsee);
    })

  }


}
