#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "snake.h"
#include "OIGestureTracker.hpp"
#include "OINuiTrackGestureTracker.hpp"

class Controller {
 public:
  void HandleInput(bool &running, Snake &snake) const;
  void HandleGestureInput(bool &running, Snake &snake) const;

 private:
  void ChangeDirection(Snake &snake, Snake::Direction input,
                       Snake::Direction opposite) const;
  void GetGestures();
  OIGestureTracker* gesture_tracker = new OINuiTrackGestureTracker();
  static std::vector<openiss::OIGestureData> gestures;
};

#endif