/**
 * =============================================================================
 * Class Name    : AIToolRegistry
 * Author        : Kowshik Malladi
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Central registry responsible for providing the correct AI Tool
 * based on the requested intent.
 *
 * The AI Engine never creates tool objects directly.
 *
 * Instead it asks:
 *
 * "Give me the tool for QUERY_ACCOUNT."
 *
 * The registry returns the appropriate implementation.
 *
 * Future:
 * This registry can later be driven by Custom Metadata instead of
 * hardcoded mappings.
 * =============================================================================
 */

public with sharing class AIToolRegistry {

    /**
     * Returns the appropriate AI Tool implementation.
     *
     * @param toolName
     *      Logical tool name determined by AI Planner.
     *
     * @return IAITool
     */
 public static IAITool getTool(String toolName){

    return AIToolFactory.createTool(toolName);

}

}