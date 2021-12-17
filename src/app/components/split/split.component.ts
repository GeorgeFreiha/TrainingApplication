import { Component, Input, OnInit } from '@angular/core';
import {
  TrainingprogramsService,
  ProgramSplit,
} from './../../services/trainingprograms.service';

@Component({
  selector: 'app-split',
  templateUrl: './split.component.html',
  styleUrls: ['./split.component.scss'],
})
export class SplitComponent implements OnInit {
  @Input() programsplit: ProgramSplit;

  constructor() {}

  ngOnInit() {
   console.log(this.programsplit);
  }
}
