import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-musclegroup',
  templateUrl: './musclegroup.component.html',
  styleUrls: ['./musclegroup.component.scss'],
})
export class MusclegroupComponent implements OnInit {
 @Input() musclegroup:string;
 @Input() nbOfVideos:string;


  constructor() { }

  ngOnInit() {}

}
