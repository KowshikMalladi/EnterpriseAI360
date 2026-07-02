/**
 * =============================================================================
 * Class Name    : AIResponse
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description:
 * -----------------------------------------------------------------------------
 * Standard response object returned by every AI Tool.
 *
 * Every Tool inside Enterprise AI 360 returns the same response structure,
 * regardless of whether it performs:
 *
 * - Salesforce Query
 * - Record Creation
 * - Record Update
 * - Flow Execution
 * - External API Call
 * - MCP Tool Execution
 *
 * This provides consistency across the AI framework.
 *
 * =============================================================================
 */

public with sharing class AIResponse {

    /**
     * Indicates whether the execution was successful.
     */
    public Boolean success;

    /**
     * Human-readable response message.
     */
    public String message;

    /**
     * Dynamic response payload.
     *
     * Examples:
     * - List<Account>
     * - Opportunity
     * - API Response
     * - JSON
     */
    public Object data;

    /**
     * Name of the tool that generated the response.
     *
     * Example:
     * QueryAccountTool
     */
    public String toolName;

    /**
     * Number of records returned.
     */
    public Integer recordsReturned;

    /**
     * Total execution time in milliseconds.
     */
    public Long executionTime;

    /**
     * Default Constructor
     */
    public AIResponse(){

        success = false;
        recordsReturned = 0;
        executionTime = 0;

    }

}