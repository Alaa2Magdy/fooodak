import 'package:flutter/material.dart';

int itemCount = 0;
int totalItems = 0;
void add() {
  itemCount++;
  totalItems++;
}

//----------- Refactoring - Long Method ----------------
/*void actions() {
  itemCount--;
  totalItems--;
  itemCount < 0 ? itemCount = 0 : itemCount = itemCount;

  if (totalItems == 0) {
    itemCount = totalItems;
  }
}*/
void remove() {
  itemCount--;
  totalItems--;
  itemCount < 0 ? itemCount = 0 : itemCount = itemCount;
}

void reset() {
  if (totalItems == 0) {
    itemCount = totalItems;
  }
}
