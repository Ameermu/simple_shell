
char **tokenize(char *line_read, const char *delim)
{
	int i = 0, ii = 0,  j, count = 1, k = 0, len[1024];
	char **res;
	pos = 0;

	if (line_read == NULL)
		return (NULL);

	while (line_read[i] != NULL)
	{
		for (j = 0; delim[j]; j++)
		{
			if (line_read[i] == delim[j])
			{
				count++;
				len[k++] = ii + 1;
				ii = 0;
				break;
			}
		}
		i++;
		ii++;
	}
	res = malloc((count + 1) * sizeof(char *));
	if (!res)
	{
		perror("failed");
		exit(EXIT_FAILURE);
	}
	i = 0;

	while (line_read[i])
	{
		res[pos] = malloc(len[i] * sizeof(char));
		for (j = 0; delim[j]; j++)
		{
			if (line_read[i] == delim[j])
				continue;
		}
	}
}
