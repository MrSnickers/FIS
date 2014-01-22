describe( "fizzbuzz", function() {
  it("should return 'fizzbuzz' when number is divisble by 15", function() {
    expect(fizzbuzz(75)).toBe("fizzbuzz");
  });      

  it("should return 'buzz' when number is divisble by 5, but not 15", function() {
    expect(fizzbuzz(10)).toBe("buzz");
  });

  it("should return 'buzz' when number is divisble by 5, but not 15", function() {
    expect(fizzbuzz(9)).toBe("fizz");
  });

  it("should return 'buzz' when number is divisble by 5, but not 15", function() {
    expect(fizzbuzz(13)).toBe(13);
  });

});
