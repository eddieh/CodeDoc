EXAMPLES = examples/objc \
	   examples/java \
	   examples/js

.PHONY: docs
docs:
	./codedoc -o docs $(EXAMPLES)
