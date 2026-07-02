/**
 * =============================================================================
 * Class Name    : AIEngine
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * AIEngine is the central orchestrator of the Enterprise AI 360 platform.
 *
 * Responsibilities:
 * - Receive AI Requests
 * - Determine User Intent
 * - Retrieve Appropriate Tool
 * - Execute Tool
 * - Return Standard AI Response
 *
 * AIEngine DOES NOT:
 * - Execute SOQL
 * - Perform DML
 * - Call External APIs
 *
 * Those responsibilities belong to individual AI Tools.
 *
 * =============================================================================
 */

public with sharing class AIEngine {

    /**
     * Main entry point for AI execution.
     *
     * @param request
     *      Standard AI Request.
     *
     * @return AIResponse
     *      Standard AI Response.
     */
    public static AIResponse process(AIRequest request){

        AIResponse response = new AIResponse();

        try{

            // Step 1 - Determine Intent
            AIIntent aiIntent = AIPlanner.determineIntent(request);

            if(aiIntent == null || String.isBlank(aiIntent.intent)){

    response.message = 'Unable to determine user intent.';
    return response;

}

            // Step 2 - Get Tool
            IAITool tool = AIToolRegistry.getTool(aiIntent.intent);

            if(tool == null){

                response.message = 'No AI Tool registered for intent : ' + aiIntent.intent;

            }

            // Step 3 - Execute Tool
            response = tool.execute(request);

        }
        catch(Exception ex){

            response.success = false;
            response.message = ex.getMessage();

        }

        return response;

    }

}