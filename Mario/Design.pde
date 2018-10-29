ArrayList<Obstacle> Platform = new ArrayList<Obstacle>();
ArrayList<Obstacle> Pipe = new ArrayList<Obstacle>();
ArrayList<Obstacle> Brick = new ArrayList<Obstacle>();

void initObstacles() {
  Platform.add(new Obstacle(0, 200, 1104, 24, PlatformBrick));
  Platform.add(new Obstacle(1136, 200, 239, 24, PlatformBrick));
  Platform.add(new Obstacle(1424, 200, 1023, 24, PlatformBrick));
  Platform.add(new Obstacle(2480, 200, 904, 24, PlatformBrick));
  
  Pipe.add(new Obstacle(450, 168, 27, 32, TubeShort));
  Pipe.add(new Obstacle(610, 152, 27, 48, TubeMedium));
  Pipe.add(new Obstacle(738, 136, 27, 64, TubeTall));
  Pipe.add(new Obstacle(914, 136, 27, 64, TubeTall));
  Pipe.add(new Obstacle(2610, 168, 27, 32, TubeShort));
  Pipe.add(new Obstacle(2866, 168, 27, 32, TubeShort));

  Brick.add(new Obstacle(256, 136, PowerUpBrick));
  Brick.add(new Obstacle(320, 136, WallBrick));
  Brick.add(new Obstacle(336, 136, PowerUpBrick));
  Brick.add(new Obstacle(352, 136, WallBrick));
  Brick.add(new Obstacle(368, 136, PowerUpBrick));
  Brick.add(new Obstacle(384, 136, WallBrick));
  Brick.add(new Obstacle(352, 72, PowerUpBrick));
  Brick.add(new Obstacle(1024, 136, PowerUpBrick));
  Brick.add(new Obstacle(1232, 136, WallBrick));
  Brick.add(new Obstacle(1248, 136, PowerUpBrick));
  Brick.add(new Obstacle(1264, 136, WallBrick));
  Brick.add(new Obstacle(1280, 72, WallBrick));
  Brick.add(new Obstacle(1296, 72, WallBrick));
  Brick.add(new Obstacle(1312, 72, WallBrick));
  Brick.add(new Obstacle(1328, 72, WallBrick));
  Brick.add(new Obstacle(1344, 72, WallBrick));
  Brick.add(new Obstacle(1360, 72, WallBrick));
  Brick.add(new Obstacle(1376, 72, WallBrick));
  Brick.add(new Obstacle(1392, 72, WallBrick));
  Brick.add(new Obstacle(1456, 72, WallBrick));
  Brick.add(new Obstacle(1472, 72, WallBrick));
  Brick.add(new Obstacle(1488, 72, WallBrick));
  Brick.add(new Obstacle(1504, 72, PowerUpBrick));
  Brick.add(new Obstacle(1504, 136, WallBrick));
  Brick.add(new Obstacle(1600, 136, WallBrick));
  Brick.add(new Obstacle(1616, 136, PowerUpBrick));
  Brick.add(new Obstacle(1696, 136, PowerUpBrick));
  Brick.add(new Obstacle(1744, 136, PowerUpBrick));
  Brick.add(new Obstacle(1792, 136, PowerUpBrick));
  Brick.add(new Obstacle(1744, 72, PowerUpBrick));
  Brick.add(new Obstacle(1888, 136, WallBrick));
  Brick.add(new Obstacle(1936, 72, WallBrick));
  Brick.add(new Obstacle(1952, 72, WallBrick));
  Brick.add(new Obstacle(1968, 72, WallBrick));
  Brick.add(new Obstacle(2048, 72, WallBrick));
  Brick.add(new Obstacle(2064, 72, PowerUpBrick));
  Brick.add(new Obstacle(2080, 72, PowerUpBrick));
  Brick.add(new Obstacle(2096, 72, WallBrick));
  Brick.add(new Obstacle(2064, 136, WallBrick));
  Brick.add(new Obstacle(2080, 136, WallBrick));
  Brick.add(new Obstacle(2688, 136, WallBrick));
  Brick.add(new Obstacle(2704, 136, WallBrick));
  Brick.add(new Obstacle(2720, 136, PowerUpBrick));
  Brick.add(new Obstacle(2736, 136, WallBrick));
  initBlocks();
}

void drawObstacles() {
  for (Obstacle platforms : Platform)  platforms.Draw();
  for (Obstacle pipes : Pipe)          pipes.display();
  for (Obstacle bricks : Brick)        bricks.display();
  drawBlocks();
}
