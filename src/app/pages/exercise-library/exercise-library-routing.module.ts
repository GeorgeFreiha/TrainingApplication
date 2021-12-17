import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ExerciseLibraryPage } from './exercise-library.page';

const routes: Routes = [
  {
    path: '',
    component: ExerciseLibraryPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ExerciseLibraryPageRoutingModule {}
