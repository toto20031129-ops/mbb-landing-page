-- Create pre_registrations table
CREATE TABLE IF NOT EXISTS public.pre_registrations (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    phone_number TEXT NOT NULL,
    email TEXT NOT NULL,
    agreed_to_terms BOOLEAN DEFAULT FALSE,
    marketing_agreed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Enable Row Level Security (RLS)
ALTER TABLE public.pre_registrations ENABLE ROW LEVEL SECURITY;

-- Create a policy that allows anyone to insert
CREATE POLICY "Allow anonymous inserts" ON public.pre_registrations
    FOR INSERT
    WITH CHECK (true);

-- Optional: Create a policy that allows only authenticated users to view
-- CREATE POLICY "Allow authenticated selects" ON public.pre_registrations
--     FOR SELECT
--     USING (auth.role() = 'authenticated');

