import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModinfoComponent } from './modinfo.component';

describe('ModinfoComponent', () => {
  let component: ModinfoComponent;
  let fixture: ComponentFixture<ModinfoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ModinfoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ModinfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
