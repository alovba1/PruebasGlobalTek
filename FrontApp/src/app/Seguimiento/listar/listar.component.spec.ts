import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListarComponentSeguimiento } from './listar.component';

describe('ListarComponent', () => {
  let component: ListarComponentSeguimiento;
  let fixture: ComponentFixture<ListarComponentSeguimiento>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ListarComponentSeguimiento ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ListarComponentSeguimiento);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
