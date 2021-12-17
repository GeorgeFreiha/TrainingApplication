import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ProgramLibraryPage } from './program-library.page';


const routes: Routes = [
  {
    path: '',
    component: ProgramLibraryPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ProgramLibraryPageRoutingModule {}
