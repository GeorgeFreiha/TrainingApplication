import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { TrainingprogramsService, User} from './../../services/trainingprograms.service';
//import { ToastController, LoadingController, AlertController } from '@ionic/angular';
//import { resolve } from 'dns';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.page.html',
  styleUrls: ['./signup.page.scss'],
})
export class SignupPage implements OnInit {
  // your_name: string ="";
  // email_address: string ="";
  // password: string ="";
  // confirm_pass: string ="";
  // disabledButton;

  constructor(
    private service: TrainingprogramsService, 
    // private toastCtrl: ToastController,
    // private loadingCtrl: LoadingController,
    // private alertCtrl: AlertController,


    ) { }

  ngOnInit() {

  }
  onSignup(form: NgForm){
    const user = form.value;
    this.service.addUser(user).subscribe(response=>{
      console.log(response);
    })

  }
  // ionViewDidEnter(){
  //   this.disabledButton = false;
  // }
 
    // if(this.your_name==""){
    //   this.presentToast('Your name is required');

    // }else if(this.email_address==""){
    //   this.presentToast('Your email is required');

    // }else if(this.password==""){
    //   this.presentToast('Your password is required');
      
    // }else if(this.confirm_pass!=this.password){
    //   this.presentToast('Passwords are not the same');
      
    // }else{
    //   this.disabledButton = true;
    //   const loader = await this.loadingCtrl.create({
    //     message:'Please wait......,'

    //   });
    //   loader.present();
    //   return new Promise(resolve=>{
    //     Let body = {
    //       aksi: 'proses_register',
    //       your_name: this.your_name,
    //       email_address: this.email_address,
    //       password: this.password,



    //     }
    //   })
    // }
  }
  // async presentToast(a){
  //   const toast = await this.toastCtrl.create({
  //     message:'a',
  //     duration: 1500,
  //     position: 'top'
  //   });
  //   toast.present();
  



