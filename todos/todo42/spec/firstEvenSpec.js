describe( "firstEven", function() {
  it("should return the first even number in an array", function() {
    expect(firstEven([30, 17, 77, 102])).toBe(30);
  });      

  it("should return the first even number in an array", function() {
    expect(firstEven([5, 11, 50])).toBe(50);
  });

  it("should return the first even number in an array", function() {
    expect(firstEven([3, 5, 15, 16, 23, 42])).toBe(16);
  });

  it("should return nil if there are no even numbers", function() {
    expect(firstEven([301, 23, 1, 55, 41])).toBe(undefined);
  });

});
