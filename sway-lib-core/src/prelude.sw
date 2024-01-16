library;

//! Defines the Sway core library prelude.
//! The prelude consists of implicitly available items,
//! for which `use` is not required.
use ::primitives::*;
use ::primitive_conversions::*;
use ::raw_ptr::*;
use ::raw_slice::*;
use ::never::*;
use ::ops::*;
use ::storage::*;
use ::str::*;
use ::codec::*;

pub fn decode_first_param<T>() -> T 
where
    T: AbiDecode
{
    let mut buffer = BufferReader::from_first_parameter();
    T::abi_decode(buffer)
}
