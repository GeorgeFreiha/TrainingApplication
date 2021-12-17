import { Component, OnInit, Input } from '@angular/core';
import { Router } from '@angular/router';
import {
  TrainingprogramsService,
  Program,
  ProgramSplit,
} from './../../services/trainingprograms.service';

@Component({
  selector: 'app-program',
  templateUrl: './program.component.html',
  styleUrls: ['./program.component.scss'],
})
export class ProgramComponent implements OnInit {
  programs: Program[];
  constructor(private service: TrainingprogramsService, private router:Router) {}
  goTosplit(programID){
    this.service.getProgramSplitByID(programID).subscribe((programSplit: ProgramSplit) =>{
      
      this.router.navigateByUrl("programdetails", {state: {programSplit}})
    })
    
  }

  ngOnInit() {
    this.service.getAllPrograms().subscribe((response) => {
      this.programs = response;
      console.log(this.programs);
    });
  }
}
