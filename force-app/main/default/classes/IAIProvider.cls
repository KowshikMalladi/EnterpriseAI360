/**
 * =============================================================================
 * Interface Name : IAIProvider
 * Project        : Enterprise AI 360
 * Version        : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Defines the contract that every AI Provider must implement.
 *
 * Supported Providers:
 * - Agentforce
 * - OpenAI
 * - Gemini
 * - Claude
 *
 * Every provider must determine the user's intent.
 *
 * =============================================================================
 */

public interface IAIProvider {

    /**
     * Determines the user's intent from the prompt.
     *
     * Example:
     * Prompt:
     * "Show all Accounts"
     *
     * Returns:
     * QUERY_ACCOUNT
     */
    String determineIntent(AIRequest request);

}