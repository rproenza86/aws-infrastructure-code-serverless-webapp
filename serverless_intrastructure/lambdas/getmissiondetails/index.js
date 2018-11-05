var doc = require('aws-sdk');
var dynamo = new doc.DynamoDB();

exports.handler = function(event, context) {
  var condition = {};
  condition['SuperHero'] = {
    ComparisonOperator: 'EQ',
    AttributeValueList: [{ S: event.superhero }]
  };

  var getParams = {
    TableName: 'SuperMission',
    ProjectionExpression: 'SuperHero, MissionStatus, Villain1, Villain2, Villain3',
    KeyConditions: condition
  };

  dynamo.query(getParams, function(err, data) {
    if (err) console.log(err, err.stack);
    // an error occurred
    else {
      context.succeed(data);
    }
  });
};
