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
 public static AIIntent determineIntent(AIRequest request){

        IAIProvider provider = AIProviderManager.getProvider();

        return provider.determineIntent(request);

    }

}