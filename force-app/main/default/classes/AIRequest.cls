/**
 * =============================================================================
 * Class Name    : AIRequest
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Description   :
 * -----------------------------------------------------------------------------
 * This class represents a standardized AI request object that is passed
 * throughout the Enterprise AI 360 framework.
 *
 * Every request coming from Salesforce, Slack, REST APIs, MCP Server,
 * or future channels will be converted into this object before processing.
 *
 * Instead of passing multiple parameters between classes, we encapsulate
 * everything into a single request object.
 *
 * Example:
 *
 * AIRequest request = new AIRequest();
 * request.prompt = 'Show all open Opportunities';
 * request.userId = UserInfo.getUserId();
 * request.source = 'Salesforce';
 *
 * Future Enhancements:
 * - Conversation Memory
 * - AI Agent Context
 * - Selected Record Information
 * - User Preferences
 * - Locale
 * - Execution Flags
 * =============================================================================
 */

public with sharing class AIRequest {

    /**
     * -------------------------------------------------------------------------
     * User's Natural Language Prompt
     *
     * Example:
     * "Show all Accounts"
     * "Create a Case"
     * "Update Opportunity Stage"
     * -------------------------------------------------------------------------
     */
    public String prompt;

    /**
     * -------------------------------------------------------------------------
     * Salesforce User Id
     *
     * Purpose:
     * - Security Validation
     * - CRUD/FLS Checks
     * - Audit Logging
     * - Permission Validation
     * -------------------------------------------------------------------------
     */
    public Id userId;

    /**
     * -------------------------------------------------------------------------
     * Conversation / Session Identifier
     *
     * Purpose:
     * - Maintain AI Conversation Context
     * - Multi-step AI Interactions
     * - Future Memory Support
     *
     * Example:
     * SESSION_10001
     * -------------------------------------------------------------------------
     */
    public String sessionId;

    /**
     * -------------------------------------------------------------------------
     * Source System
     *
     * Identifies where the request originated.
     *
     * Possible Values:
     * - Salesforce
     * - Slack
     * - REST
     * - MCP
     * - Agentforce
     * -------------------------------------------------------------------------
     */
    public String source;

    /**
     * -------------------------------------------------------------------------
     * Additional Runtime Context
     *
     * Stores dynamic information without modifying the class.
     *
     * Examples:
     * - Record Id
     * - Object API Name
     * - Locale
     * - AI Provider
     * - Model Name
     * - Execution Flags
     * - User Preferences
     *
     * This makes the framework extensible and avoids changing
     * the class every time new context is required.
     * -------------------------------------------------------------------------
     */
    public Map<String, Object> context;

    /**
     * Constructor
     *
     * Initializes the Context Map so callers can safely add values.
     */
    public AIRequest() {
        context = new Map<String, Object>();
    }
}
