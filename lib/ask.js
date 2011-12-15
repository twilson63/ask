
  module.exports = function(question, format, callback) {
    var stdin, stdout;
    stdin = process.stdin;
    stdout = process.stdout;
    stdin.resume();
    stdout.write("" + question + ":");
    return stdin.once('data', function(data) {
      data = data.toString().trim();
      if (format.test(data)) {
        return callback(data);
      } else {
        stdout.write("It should match: " + format + "\n");
        return ask(question, format, callback);
      }
    });
  };
