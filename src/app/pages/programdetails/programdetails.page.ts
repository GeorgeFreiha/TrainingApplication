import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import {
  TrainingprogramsService,
  Program,
  ProgramSplit,
} from './../../services/trainingprograms.service';

@Component({
  selector: 'app-programdetails',
  templateUrl: './programdetails.page.html',
  styleUrls: ['./programdetails.page.scss'],
})
export class ProgramdetailsPage implements OnInit {
  program: ProgramSplit;
  constructor(private router: Router) {
    
  }

  ngOnInit() {

    if(this.router.getCurrentNavigation().extras.state){
      const program = this.router.getCurrentNavigation().extras.state.programSplit[0];
      program.list_of_exercises = program.list_of_exercises.split("\n");
      this.program = program;
    }
    
  }
}
