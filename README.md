# CPUrCute

a fully functional, simulated 2-stage pipelined processor, implemented using only logic gates in Logisim, that is capable of executing blocks of RISC-V assembly instructions

## Using the CPU
<ol>
  <li>Come up with the RISC-V assembly instructions for the test, and save them in a file ending in <code class="language-plaintext highlighter-rouge">.s</code> in the <code class="language-plaintext highlighter-rouge">tests/part_b/custom/inputs</code> folder. The name of this file will be the name of your test. Note that your test <strong>must</strong> end in <code class="language-plaintext highlighter-rouge">.s</code>, and it <strong>must</strong> be located in the <code class="language-plaintext highlighter-rouge">tests/part_b/custom/inputs</code> folder. Repeat if you have more tests.
    <ul>
      <li>e.g. <code class="language-plaintext highlighter-rouge">tests/part_b/custom/inputs/sll-slli.s</code>, <code class="language-plaintext highlighter-rouge">tests/part_b/custom/inputs/slt.s</code></li>
    </ul>
  </li>
  <li>To generate test circuits for your tests, run the <code class="language-plaintext highlighter-rouge">create-test.py</code> script:
    <div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span><span class="nb">cd </span>tests/part_b/custom
<span class="nv">$ </span>python3 create-test.py inputs/sll-slli.s inputs/slt.s
</code></pre></div>    </div>
    <p>This should generate a couple new files:</p>
    <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>tests/part_b/custom:
  - &lt;TEST_NAME&gt;.circ # The new circuit for your test
  - inputs/&lt;TEST_NAME&gt;.s # The test file you wrote
  - inputs/&lt;TEST_NAME&gt;.hex # The machine code of the test file you wrote
  - reference_outputs/&lt;TEST_NAME&gt;-ref.out # The reference output for your test
</code></pre></div>    </div>
  </li>
  <li>Now you can run your tests!
    <div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>python3 test_runner.py part_b custom
</code></pre></div>    </div>
  </li>
</ol>

<p>If you want to inspect the circuit running your test, you can simulate it by opening up the <code class="language-plaintext highlighter-rouge">CPU-&lt;test name here&gt;.circ</code> file.</p>

<p>If you wish to simulate your code only for a certain number of cycles, you can do that by using the <code class="language-plaintext highlighter-rouge">-n</code> flag:</p>

<div class="language-bash highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nv">$ </span>python3 create_test.py <span class="nt">-n</span> &lt;NUMBER_OF_CYCLES&gt; &lt;TEST_NAME&gt;.s
</code></pre></div></div>

<p>Note that because a 2-stage pipelined processor is implemented and the first instruction writes on the rising edge of the second clock cycle, the effects of your instructions will have a 2 instruction delay. For example, let’s say you wrote a test with one instruction: <code class="language-plaintext highlighter-rouge">addi t0, x0, 1</code>. If you inspect the reference output, you’ll see that <code class="language-plaintext highlighter-rouge">t0</code> isn’t changed until the third cycle.</p>

<hr />
