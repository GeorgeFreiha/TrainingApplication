import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ProgramdetailsPage } from './programdetails.page';

const routes: Routes = [
  {
    path: '',
    component: ProgramdetailsPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ProgramdetailsPageRoutingModule {}
