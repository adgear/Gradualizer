-module(record_refinement).

-record(one_field, { a :: integer() | undefined }).

-spec one_field3(#one_field{}, integer()) -> integer().
one_field3(#one_field{a = I}, I) -> I;
one_field3(#one_field{a = undefined}, I) -> I;
one_field3(#one_field{a = I}, _) -> I.

