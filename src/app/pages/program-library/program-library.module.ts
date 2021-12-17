import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ProgramLibraryPageRoutingModule } from './program-library-routing.module';

import { ProgramLibraryPage } from './program-library.page';
import { ComponentsModule } from 'src/app/components/components.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ComponentsModule,
    ProgramLibraryPageRoutingModule
  ],
  declarations: [ProgramLibraryPage]
})
export class ProgramLibraryPageModule {}
