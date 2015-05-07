package com.antra.test;

import static org.junit.Assert.*;
import static org.junit.Assume.*;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;

@RunWith(Parameterized.class)
public class FibonacciTest {
	@Parameters
	public static Collection<Object[]> data() {
		return Arrays.asList(new Object[][] { { -1, -1 }, { 0, 0 }, { 1, 1 },
				{ 2, 1 }, { 3, 2 }, { 4, 3 }, { 5, 5 }, { 6, 8 } });
	}

	/*
	 * Set parameters by using constructor
	 * 
	 * private int fInput;
	 * 
	 * private int fExpected;
	 * 
	 * public FibonacciTest(int input, int expected) { fInput= input; fExpected=
	 * expected; }
	 */

	@Parameter(value = 0)
	// first data value (0) is default
	public/* NOT private */int fInput;

	@Parameter(value = 1)
	public/* NOT private */int fExpected;

	private int compute(int n) {
		if (n == 0)
			return 0;
		if (n == 1)
			return 1;
		return compute(n - 2) + compute(n - 1);
	}

	@Test
	public void test() {
		assumeTrue(fInput >= 0);
		assertEquals(fExpected, compute(fInput));
	}
}
