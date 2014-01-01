# This files is for all my elixir settings

echo "Setting up elixir"
ELIXIR_MAIN_PATH=~/elixir/elixir-0.9.3
if [ -d $ELIXIR_MAIN_PATH/bin ]; then
   PATH=$ELIXIR_MAIN_PATH/bin:$PATH
fi

