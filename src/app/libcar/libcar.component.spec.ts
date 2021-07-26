import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LibcarComponent } from './libcar.component';

describe('LibcarComponent', () => {
  let component: LibcarComponent;
  let fixture: ComponentFixture<LibcarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LibcarComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LibcarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
