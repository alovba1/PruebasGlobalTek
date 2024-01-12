import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddComponentSeguimiento } from './add.component';

describe('AddComponent', () => {
  let component: AddComponentSeguimiento;
  let fixture: ComponentFixture<AddComponentSeguimiento>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddComponentSeguimiento ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddComponentSeguimiento);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
