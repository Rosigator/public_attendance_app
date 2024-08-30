/* Usar para generar el secreto del JWT */
import crypto from 'node:crypto';
const secret = crypto.randomBytes(64).toString('hex');
console.log(secret);