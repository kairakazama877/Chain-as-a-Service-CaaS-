export async function settle(intentHash: string) {
  return { status: 'executed', intentHash }
}
