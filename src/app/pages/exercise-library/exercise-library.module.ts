import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ExerciseLibraryPageRoutingModule } from './exercise-library-routing.module';

import { ExerciseLibraryPage } from './exercise-library.page';
import { ComponentsModule } from 'src/app/components/components.module';


@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ComponentsModule,
    ExerciseLibraryPageRoutingModule
  ],
  declarations: [ExerciseLibraryPage]
})
export class ExerciseLibraryPageModule {}
