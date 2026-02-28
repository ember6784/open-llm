// Simple agent router middleware for OpenClaw
// Routes messages to agents based on prefix

const AGENT_PREFIXES = {
  '/coder': 'coder',
  '/code': 'coder',
  '/analyst': 'analyst',
  '/analyze': 'analyst',
  '/planner': 'planner',
  '/plan': 'planner',
  '/main': 'main',
  '/default': 'main'
};

module.exports = async (context, next) => {
  const { message } = context;
  const text = message?.text?.trim?.();
  
  if (!text) return await next();
  
  // Check for agent prefix
  for (const [prefix, agentId] of Object.entries(AGENT_PREFIXES)) {
    if (text.toLowerCase().startsWith(prefix)) {
      context.agentId = agentId;
      context.originalMessage = text;
      // Strip prefix from message
      const remainingText = text.slice(prefix.length).trim();
      if (remainingText) {
        context.message.text = remainingText;
      }
      break;
    }
  }
  
  return await next();
};
