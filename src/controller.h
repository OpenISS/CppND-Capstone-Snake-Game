#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "snake.h"
#include "OIGestureTracker.hpp"
#include "OINuiTrackGestureTracker.hpp"

class Controller {
 public:
  void HandleInput(bool &running, Snake &snake) const;
  void HandleGestureInput(bool &running, Snake &snake, openiss::OIGestureTracker* gesture_tracker) const;

 private:
  void ChangeDirection(Snake &snake, Snake::Direction input,
                       Snake::Direction opposite) const;
};

#endif