import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ModfiltroComponent } from './modfiltro.component';

describe('ModfiltroComponent', () => {
  let component: ModfiltroComponent;
  let fixture: ComponentFixture<ModfiltroComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ModfiltroComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ModfiltroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
