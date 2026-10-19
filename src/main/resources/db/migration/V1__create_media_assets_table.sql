CREATE TABLE media_assets (
                              id UUID PRIMARY KEY,
                              original_filename VARCHAR(255) NOT NULL,
                              content_type VARCHAR(100) NOT NULL,
                              file_size_bytes BIGINT NOT NULL,
                              storage_path VARCHAR(500) NOT NULL,
                              status VARCHAR(50) NOT NULL,
                              metadata JSONB,
                              created_at TIMESTAMP WITH TIME ZONE NOT NULL,
                              updated_at TIMESTAMP WITH TIME ZONE NOT NULL
);

CREATE INDEX idx_media_assets_status ON media_assets (status);