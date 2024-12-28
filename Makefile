.PHONY: generate

generate:
	protoc 		-I proto \
		--go_out=./gen/go \
		--go-grpc_out=./gen/go \
		--go_opt=paths=source_relative \
		--go-grpc_opt=paths=source_relative \
		proto/sso/*.proto
