import { Intent } from './types'
import crypto from 'crypto'

export function resolveIntent(intent: Intent): string {
  return crypto.createHash('sha256').update(JSON.stringify(intent)).digest('hex')
}
