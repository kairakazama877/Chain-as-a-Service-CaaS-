import { resolveIntent } from './resolver'
import { settle } from './settlement'

const intent = {
  userAddress: '0xUSER',
  inputAsset: 'ETH',
  outputAsset: 'USDC',
  amount: 1
}

const hash = resolveIntent(intent)
settle(hash).then(console.log)
