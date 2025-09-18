import argparse

def removeYAMLFrontmatter(content):
    """
    Remove YAML frontmatter from the given content.

    Args:
        content (str): The content of a Markdown file.

    Returns:
        str: The content with YAML frontmatter removed.
    """
    char_start = content.find('---')
    if char_start != -1:
        char_end = content.find('---', char_start + 3)
        if char_end != -1:
            content = content[char_end + 3:]

    return content

def replaceOptionalClass(content):
    """
    Replace an optional class comment in the content.

    Args:
        content (str): The content of a Markdown file.

    Returns:
        str: The content with the class comment replaced.
    """
    class_comment = [
        "<!-- _class: title -->",
        "<!-- _class: title-bg -->",
    ]
    replacement = "<!-- _class: chapter -->"

    for class_cmt in class_comment:
        if class_cmt in content:
            content = content.replace(class_cmt, replacement)

    return content

def removeEndContent(content):
    """
    Remove end content from the given content.

    Args:
        content (str): The content of a Markdown file.

    Returns:
        str: The content with end content removed.
    """
    char_start = len(content)
    end_marker = [
            "\n<!-- _class: end -->",
            "\n<!-- _class: end-bg -->",
            "\n<!-- _class: contact -->",
            "\n<!-- _class: information -->",
    ]
    for endm in end_marker:
        chars = content.find(endm)
        if chars != -1:
            char_start = min(chars, char_start)

    if char_start != len(content):
        content = content[:char_start]

    return content

def removeScriptBlock(content):
    """
    Remove an optional script block from the content.

    Args:
        content (str): The content of a Markdown file.

    Returns:
        str: The content with the script block removed.
    """
    script_start = "<script>"
    char_start = content.find(script_start)
    if char_start != -1:
        content = content[:char_start]

    return content

def process_marp_files(input_files, output_file, frontmatter_file=None, backmatter_file=None):
    """
    Convert Marp Markdown files to a single presentation file.

    Args:
        input_files (list): List of input Marp Markdown files.
        output_file (str): Output presentation file.
        frontmatter_file (str, optional): File containing frontmatter content.
        backmatter_file (str, optional): File containing backmatter content.
    """
    # Read frontmatter content if provided and separate it from contents
    frontmatter_content = ""
    if frontmatter_file:
        with open(frontmatter_file, 'r', encoding='utf-8') as f:
            frontmatter_content = f.read()
        frontmatter_content += "\n---"

    # Initialize the output content with frontmatter
    output_content = frontmatter_content

    # Process each input file
    for input_file in input_files:
        with open(input_file, 'r', encoding='utf-8') as f:
            content = f.read()

            # Remove YAML frontmatter
            content = removeYAMLFrontmatter(content)

            # Replace optional class comment
            content = replaceOptionalClass(content)

            # Remove end content if present
            content = removeEndContent(content)

            # Remove optional script block
            content = removeScriptBlock(content)

            # Append the content to the output
            output_content += content

            # Check if there is a separator to the next slide
            if output_content[-3:] != "---":
                output_content += "\n---\n"

    # Check if the last page is empty and remove it
    if output_content[-3:] == "---":
        output_content = output_content[:-3]

    # Read backmatter content if provided and remove ScriptBlock
    backmatter_content = ""
    if backmatter_file:
        with open(backmatter_file, 'r', encoding='utf-8') as f:
            backmatter_content = f.read()

            # remove YAML from backmatter
            backmatter_content = removeYAMLFrontmatter(backmatter_content)

    # Append backmatter content to the output
    output_content += backmatter_content


    # Write the output content to the output file
    with open(output_file, 'w', encoding='utf-8') as out_f:
        out_f.write(output_content)

def main():
    """
    Main function to parse command-line arguments and execute the conversion process.
    """
    parser = argparse.ArgumentParser(description="Convert Marp Markdown files to a single presentation")
    parser.add_argument("-o", "--output", required=True, help="Output presentation file")
    parser.add_argument("-f", "--frontmatter", help="File containing frontmatter content")
    parser.add_argument("-b", "--backmatter", help="File containing backmatter content")
    parser.add_argument("input_files", nargs='+', help="Input Marp Markdown files")

    args = parser.parse_args()

    process_marp_files(args.input_files, args.output, args.frontmatter, args.backmatter)

if __name__ == "__main__":
    main()
