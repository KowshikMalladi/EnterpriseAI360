/**
 * =============================================================================
 * Class Name : AgentforceProvider
 * Project    : Enterprise AI 360
 *
 * Description
 * -----------------------------------------------------------------------------
 * Mock implementation of the Agentforce AI Provider.
 *
 * This class simulates AI intent detection until we integrate with
 * Salesforce Agentforce APIs.
 *
 * Future Version:
 * - Invoke Agentforce
 * - Parse AI response
 * - Populate AIIntent
 * =============================================================================
 */

public with sharing class AgentforceProvider implements IAIProvider {

    public AIIntent determineIntent(AIRequest request){

        AIIntent intent = new AIIntent();

        intent.provider = 'Agentforce';

        String prompt = request.prompt.toLowerCase();

        if(prompt.contains('account')){

            intent.intent = 'QUERY_ACCOUNT';
            intent.suggestedTool = 'QueryAccountTool';
            intent.confidenceScore = 0.99;
            intent.reasoning = 'Keyword "Account" detected';

        }
        else{

            intent.intent = 'UNKNOWN';
            intent.confidenceScore = 0.25;
            intent.reasoning = 'Unable to determine intent';

        }

        return intent;

    }

}