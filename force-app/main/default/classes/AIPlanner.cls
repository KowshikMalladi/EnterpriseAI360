/**
 * =============================================================================
 * Class Name    : AIPlanner
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * AIPlanner is responsible for understanding the user's request and converting
 * it into a logical intent.
 *
 * The Planner DOES NOT execute business logic.
 *
 * It only decides:
 *
 * "Which tool should be executed?"
 *
 * Current Version:
 * Rule-based Planner
 *
 * Future Version:
 * AI/LLM Powered Planner
 * =============================================================================
 */

public with sharing class AIPlanner {

    /**
     * Determines the logical intent of the request.
     *
     * @param request
     *      Standard AI Request
     *
     * @return String
     *      Tool Intent
     */
    public static String determineIntent(AIRequest request){

        if(request == null || String.isBlank(request.prompt)){
            return null;
        }

        String prompt = request.prompt.toLowerCase();

        // Query Account
        if(prompt.contains('account')){
            return 'QUERY_ACCOUNT';
        }

        // Create Case
        if(prompt.contains('case')){
            return 'CREATE_CASE';
        }

        // Opportunity
        if(prompt.contains('opportunity')){
            return 'QUERY_OPPORTUNITY';
        }

        // Lead
        if(prompt.contains('lead')){
            return 'QUERY_LEAD';
        }

        return 'UNKNOWN';

    }

}