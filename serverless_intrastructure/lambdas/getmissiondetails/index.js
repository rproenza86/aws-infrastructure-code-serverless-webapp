var doc = require('aws-sdk');
var dynamo = new doc.DynamoDB();

exports.handler = function (event, context) {
  const condition = {};
  const body = JSON.parse(event.body);

  const superhero = body.superhero || 'Superman';
  condition['SuperHero'] = {
    ComparisonOperator: 'EQ',
    AttributeValueList: [{ S: superhero }]
  };

  const getParams = {
    TableName: 'SuperMission',
    ProjectionExpression: 'SuperHero, MissionStatus, Villain1, Villain2, Villain3',
    KeyConditions: condition
  };

  dynamo.query(getParams, function (err, data) {
    if (err) console.log(err, err.stack);
    // an error occurred
    else {
      const response = {
        statusCode: 200,
        body: JSON.stringify(data),
        headers: {
          'Access-Control-Allow-Origin': '*'
        }
      };
      context.succeed(response);
    }
  });
};

exports.handle1 = function (event, context) {
  const condition = {};
  const body = JSON.parse(event.body);

  const superhero = body.superhero || 'Superman';
  condition['SuperHero'] = {
    ComparisonOperator: 'EQ',
    AttributeValueList: [{ S: superhero }]
  };

  const getParams = {
    TableName: 'SuperMission',
    ProjectionExpression: 'SuperHero, MissionStatus, Villain1, Villain2, Villain3',
    KeyConditions: condition
  };

  dynamo.query(getParams, function (err, data) {
    const response = {
      statusCode: 200,
      body: JSON.stringify('Hello from Lambda 2!'),
      headers: {
        'Access-Control-Allow-Origin': '*'
      }
    };

    if (err) {
      console.log(err, err.stack);
      response.body = JSON.stringify(err);
    }
    else {
      const response = {
        statusCode: 200,
        body: JSON.stringify(data),
        headers: {
          'Access-Control-Allow-Origin': '*'
        }
      };
    }

    context.succeed(response);
  });
};

exports.handlerV2 = async (event, context) => {
  const condition = {};
  const body = JSON.parse(event.body);

  const superhero = body.superhero || 'Superman';
  condition['SuperHero'] = {
    ComparisonOperator: 'EQ',
    AttributeValueList: [{ S: superhero }]
  };

  const getParams = {
    TableName: 'SuperMission',
    ProjectionExpression: 'SuperHero, MissionStatus, Villain1, Villain2, Villain3',
    KeyConditions: condition
  };

  const response = {
    statusCode: 200,
    body: JSON.stringify({ kaka: 'Hello from Lambda 5!', getParams }),
    headers: {
      'Access-Control-Allow-Origin': '*'
    }
  };
  return context.succeed(response);
};
