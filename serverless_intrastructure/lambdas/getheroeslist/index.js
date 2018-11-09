var doc = require('aws-sdk');
var dynamo = new doc.DynamoDB();

exports.handler = function(event, context) {
  var getParams = {
    TableName: 'SuperMission'
  };

  dynamo.scan(getParams, function(err, data) {
    if (err) console.log(err, err.stack);
    // an error occurred
    else {
      const response = {
        statusCode: 200,
        body: JSON.stringify(data),
        headers: { 'Access-Control-Allow-Origin': '*' }
      };
      context.succeed(response);
    }
  });
};
