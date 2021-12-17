import { NgModule } from '@angular/core';
import { InputComponent } from './input/input.component';
import { MusclegroupComponent } from './musclegroup/musclegroup.component';
import { ProgramComponent } from './program/program.component';
import { SplitComponent } from './split/split.component';
import { CommonModule } from '@angular/common';

@NgModule({
  declarations: [InputComponent, MusclegroupComponent, ProgramComponent,SplitComponent ],
  exports: [InputComponent, MusclegroupComponent, ProgramComponent, SplitComponent],
  imports: [CommonModule],
})
export class ComponentsModule {}
