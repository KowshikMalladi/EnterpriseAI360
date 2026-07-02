/**
 * =============================================================================
 * Class Name    : AIRequest
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 2.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Standard request object used across the Enterprise AI 360 platform.
 *
 * Every request coming from:
 * - Salesforce
 * - Slack
 * - MCP
 * - REST API
 * - Agentforce
 * - External Systems
 *
 * will be converted into this object before processing.
 *
 * =============================================================================
 */

public with sharing class AIRequest {

    /**
     * User's Natural Language Prompt.
     *
     * Example:
     * "Show all Accounts"
     * "Create a Case"
     */
    public String prompt;

    /**
     * Salesforce User Id.
     */
    public Id userId;

    /**
     * Conversation Session Id.
     */
    public String sessionId;

    /**
     * Request Source.
     *
     * Examples:
     * Salesforce
     * Slack
     * MCP
     * REST
     * Agentforce
     */
    public String source;

    /**
     * Runtime Context.
     */
    public Map<String,Object> context;

    // =========================================================================
    // Generic Salesforce Request Information
    // =========================================================================

    /**
     * Salesforce Object API Name.
     *
     * Examples:
     * Account
     * Case
     * Opportunity
     * Custom_Object__c
     */
    public String objectName;

    /**
     * Operation to perform.
     *
     * Supported Values:
     * QUERY
     * CREATE
     * UPDATE
     * DELETE
     * UPSERT
     * DESCRIBE
     * RUN_FLOW
     */
    public String operation;

    /**
     * Fields to retrieve.
     *
     * Example:
     * Name
     * Industry
     * Phone
     */
    public List<String> fields;

    /**
     * WHERE clause.
     *
     * Example:
     * Industry = 'Healthcare'
     */
    public String whereClause;

    /**
     * ORDER BY clause.
     *
     * Example:
     * CreatedDate DESC
     */
    public String orderBy;

    /**
     * Maximum records to return.
     */
    public Integer limitSize;

    /**
     * Record Id.
     *
     * Used for:
     * UPDATE
     * DELETE
     */
    public Id recordId;

    /**
     * Field values for CREATE/UPDATE.
     *
     * Example:
     * {
     *   'Name' => 'Acme Technologies',
     *   'Industry' => 'Healthcare'
     * }
     */
    public Map<String,Object> fieldValues;

    /**
     * Additional filters or parameters.
     *
     * Future Examples:
     * Date Range
     * Search Text
     * Locale
     */
    public Map<String,Object> parameters;

    /**
     * Constructor.
     */
    public AIRequest(){

        context = new Map<String,Object>();
        fields = new List<String>();
        fieldValues = new Map<String,Object>();
        parameters = new Map<String,Object>();

        // Default values
        limitSize = 100;

    }

}