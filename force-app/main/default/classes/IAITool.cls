/**
 * =============================================================================
 * Interface Name : IAITool
 * Author         : Kowshik Malladi
 * Project        : Enterprise AI 360
 * Version        : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * IAITool defines the standard contract that every AI Tool must implement.
 *
 * This ensures every tool behaves consistently regardless of its purpose.
 *
 * Examples of AI Tools:
 *
 * • QueryAccountTool
 * • QueryOpportunityTool
 * • CreateAccountTool
 * • UpdateOpportunityTool
 * • DeleteTaskTool
 * • RunFlowTool
 * • ServiceNowTool
 * • JiraTool
 * • SAPTool
 * • MetadataTool
 *
 * Every tool must implement:
 *
 *      AIResponse execute(AIRequest request)
 *
 * so that the AI Engine can execute any tool without knowing its
 * implementation details.
 *
 * This follows the Strategy Design Pattern.
 *
 * =============================================================================
 */

public interface IAITool {

    /**
     * Executes the requested AI Tool.
     *
     * Parameters
     * ----------
     * request
     *     Standard AI request object.
     *
     * Returns
     * -------
     * AIResponse
     *     Standard response object.
     */
    AIResponse execute(AIRequest request);

}