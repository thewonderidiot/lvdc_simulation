#!/usr/bin/env python3
import sys
from qtpy.QtWidgets import QApplication
from main_window import MainWindow

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow(None, app)
    window.show()
    app.exec()
