/**
 * =============================================================================
 * Class Name    : AIIntent
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Represents the AI's understanding of a user's request.
 *
 * This wrapper is returned by every AI Provider.
 *
 * Future Enhancements:
 * - Entity Extraction
 * - Multiple Candidate Intents
 * - Prompt Classification
 * - AI Reasoning
 * =============================================================================
 */

public with sharing class AIIntent {

    /**
     * Identified intent.
     *
     * Example:
     * QUERY_ACCOUNT
     */
    public String intent;

    /**
     * Confidence Score.
     *
     * Range:
     * 0.00 - 1.00
     */
    public Decimal confidenceScore;

    /**
     * AI Provider.
     *
     * Example:
     * Agentforce
     * OpenAI
     * Gemini
     */
    public String provider;

    /**
     * Suggested Tool.
     *
     * Example:
     * QueryAccountTool
     */
    public String suggestedTool;

    /**
     * Optional reasoning.
     *
     * Useful for debugging AI decisions.
     */
    public String reasoning;

    /**
     * Runtime entities.
     *
     * Example:
     * Object = Account
     * Location = Hyderabad
     */
    public Map<String,Object> entities;

    /**
     * Constructor
     */
    public AIIntent(){

        confidenceScore = 0;
        entities = new Map<String,Object>();

    }

}