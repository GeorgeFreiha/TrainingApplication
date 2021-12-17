import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomePage } from './home.page';

const routes: Routes = [
  {
    path: '',
    component: HomePage,
    children:[
      {
        path:'main',
        children:[
          {
            path:'',
            loadChildren: () => import('../pages/main/main.module').then( m => m.MainPageModule)
            
          }
        ]
      },
      {
        path:'program-library',
        children:[
          {
            path:'',
            loadChildren: () => import('../pages/program-library/program-library.module').then( m => m.ProgramLibraryPageModule)
            
          }
        ]
      },
      {
        path:'exercise-library',
        children:[
          {
            path:'',
            loadChildren: () => import('../pages/exercise-library/exercise-library.module').then( m => m.ExerciseLibraryPageModule)
            
          }
        ]
      },
      {
        path: '',
        redirectTo: 'main',
        pathMatch: 'full',
      },
      


    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomePageRoutingModule {}
